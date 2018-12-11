-- Tables
USE BeerStyles;

SELECT * FROM BeerStyles.Categories;

SELECT * FROM BeerStyles.Countries;

SELECT * FROM BeerStyles.Styles;

SELECT s.StyleNM, co.CountryNM, cat.CategoryDS
  FROM Styles as s
    INNER JOIN Countries as co
      ON s.CountryFK = co.CountryID
    INNER JOIN Categories as cat
      ON s.CategoryFK = cat.CategoryID;

SELECT s.StyleNM, co.CountryNM, cat.CategoryDS
  FROM Styles as s, Countries as co, Categories as cat
  WHERE s.CountryFK = co.CountryID
        AND
        s.CategoryFK = cat.CategoryID;
