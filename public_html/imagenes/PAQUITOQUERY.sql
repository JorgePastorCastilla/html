use Cinema;

select TITLE from FILM ORDER BY TITLE ASC  LIMIT 21,20;

select * from FILM ORDER BY TITLE ASC  LIMIT 50;

select TITLE from FILM ORDER BY TITLE DESC  LIMIT 20;

select TITLE from FILM ORDER BY TITLE ASC  LIMIT 21,19;

select TITLE from FILM ORDER BY TITLE ASC  LIMIT 41,19; 

SELECT NAME FROM ARTIST WHERE NAME = 'Denzel';

SELECT NOME,ADDRESS FROM CINEMA;

SELECT DISTINCT FILM_CODE,FESTIVAL_CODE FROM AWARD;

SELECT ARTIST_CODE FROM PLAY WHERE ROLE = 'P'; /*!9*/

SELECT TITLE FROM FILM WHERE RELEASE_YEAR = 2015; /*!10*/

SELECT * FROM FESTIVAL_CODE WHERE NAME = 'cannes';	/*!11 */
SELECT CATEGORY_CODE FROM AWARD WHERE FESTIVAL_CODE = 1; /*!11 */

SELECT TITLE FROM FILM WHERE RELEASE_YEAR = 2010 OR RELEASE_YEAR = 2011;

SELECT TITLE FROM FILM WHERE  RELEASE_YEAR > 2000 AND RELEASE_YEAR < 2017;

SELECT TITLE FROM FILM WHERE  RELEASE_YEAR <> 2000;

SELECT TITLE FROM FILM WHERE  RELEASE_YEAR IS NULL;

SELECT TITLE FROM FILM WHERE DIRECTOR_CODE = 'EAST';

SELECT TITLE FROM FILM WHERE DIRECTOR_CODE = 'EAST' OR DIRECTOR_CODE = 'POLA';

select now(), version();



+99













