#include "ab6_invars.h"
#include <stdlib.h>
#include <stdio.h>

static void onError(Ab6Invars *dt, Ab6Error error);

int main(int argc, const char *argv[])
{
  Ab6Error error;
  Ab6Invars *dt;
  int natom, ndtset, idtset;
  double *coord, rprimd[3][3];
  int dims[7], ndims;
  int i, j, n, nsym;

  dt = ab6_invars_new_from_file(argv[1]);

  error = ab6_invars_get_ndtset(dt, &ndtset);
  if (error != AB6_NO_ERROR) onError(dt, error);

  for (idtset = 0; idtset <= ndtset; idtset++)
    {
      error = ab6_invars_get_integer(dt, AB6_INVARS_NATOM, idtset, &natom);
      if (error != AB6_NO_ERROR) onError(dt, error);
      error = ab6_invars_get_shape(dt, &ndims, dims, AB6_INVARS_XRED_ORIG, idtset);
      if (error != AB6_NO_ERROR) onError(dt, error);
      n     = dims[0] * dims[1];
      coord = malloc(sizeof(double) * n);
      error = ab6_invars_get_real_array(dt, coord, n, AB6_INVARS_XRED_ORIG, idtset);
      if (error != AB6_NO_ERROR) onError(dt, error);
      error = ab6_invars_get_real_array(dt, (double*)rprimd, 9, AB6_INVARS_RPRIMD_ORIG, idtset);
      if (error != AB6_NO_ERROR) onError(dt, error);
      error = ab6_invars_get_integer(dt, AB6_INVARS_NSYM, idtset, &nsym);
      if (error != AB6_NO_ERROR) onError(dt, error);

      printf("### DATASET %d/%d ###\n", idtset, ndtset);
      printf("Number of atoms in dataset %d: %d\n",
	     idtset, natom);
      printf("box definition: (%12.6f%12.6f%12.6f)\n",
	     rprimd[0][0], rprimd[0][1], rprimd[0][2]);
      printf("                (%12.6f%12.6f%12.6f)\n",
	     rprimd[1][0], rprimd[1][1], rprimd[1][2]);
      printf("                (%12.6f%12.6f%12.6f)\n",
	     rprimd[2][0], rprimd[2][1], rprimd[2][2]);
      printf("Size of coordiantes array in dataset %d: %d\n", idtset, n);
      printf("Coordinates in dataset %d:\n", idtset);
      for (j = 0; j < dims[1]; j++)
	{
	  for (i = 0; i < dims[0]; i++)
	    printf("%12.6f", coord[j * dims[0] + i]);
	  printf("\n");
	}
      free(coord);
      printf("Number of symmetries in dataset %d: %d\n", idtset, nsym);
      printf("\n");
    }

  ab6_invars_free(dt);

  return 0;
}

static void onError(Ab6Invars *dt, Ab6Error error)
{
  fprintf(stderr, "Error %d\n", (int)error);
  ab6_invars_free(dt);
  exit(error);
}
