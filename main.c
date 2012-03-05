#include <libintl.h>
#include <locale.h>
#include <stdio.h>
#include <stdlib.h>
int main(void)
{
    setlocale( LC_ALL, "" );
    bindtextdomain( "hello", "/usr/share/locale" );
    textdomain( "hello" );
    printf( gettext( "Hello, world!\n" ) );
    exit(0);
}
