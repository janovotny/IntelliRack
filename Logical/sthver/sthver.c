#ifdef _DEFAULT_INCLUDES
 #include <AsDefault.h>
#endif
/********************************
       I N C L U D E
********************************/
#include <bur\plc.h>
#include <bur\plctypes.h>
#include <asstring.h>

#if _OLD_DECLARATION	/* due to conversion */
_LOCAL char szVersion[80];
#endif	/* "#endif" due to conversion */

void _INIT init_sthver(void) {
	char *pszFilename = __FILE__; /* diese Konstante enthält den Filenamen inclusive alle Unterverzeichnisse */
	short i=0;
	short PosChar=0, VerChar=0;

	/* Länge des Filenamens bestimmen */
	while(pszFilename[i]) i++;

	/* Den Filenamen von hinten beginnend nach .pgp absuchen und die Position merken */
	i=i-3;
	while(i>0){
		if( (pszFilename[i]=='.')&&(pszFilename[i+1]=='p')&&(pszFilename[i+2]=='g')&&(pszFilename[i+3]=='p') ){
			PosChar = i;
			break;
		}
		i--;
	}

	/* Anzahl Zeichen bis ersten Backslash vor ".pgp" bestimmen */
	if (PosChar > 0) {
		while (PosChar > VerChar) {
			if (pszFilename[PosChar - VerChar] != '\\' ) VerChar++;
			else {VerChar--; break;}
		}
	}

	/*Version kopieren*/
	memcpy(&szVersion, &pszFilename[PosChar - VerChar], VerChar);
}


void _CYCLIC cyclic_sthver(void) {
/*no code*/
}


