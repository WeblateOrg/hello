#include <libintl.h>
#include <locale.h>
#include <stdio.h>
#include <stdlib.h>
int main(void)
{
    int count = 1;
    setlocale( LC_ALL, "" );
    bindtextdomain( "hello", "/usr/share/locale" );
    textdomain( "hello" );
    printf( gettext( "Hello, world!\n" ) );
    printf( ngettext( "Orangutan has %d banana.\n", "Orangutan has %d bananas.\n", count ), count );
    printf( gettext( "Try Weblate at <http://demo.weblate.org/>!\n" ) );
    printf( "%s\n", gettext( "Thank you for using Weblate." ) );
    exit(0);
}
