namespace my.bookshop;
using { cuid, managed, sap, Currency } from '@sap/cds/common';

entity Books : cuid, managed {
  title  : localized String not null;
  description : localized String;
  author : Association to Authors;
  genre : Association to Genres;
  stock  : Integer;
  price : Decimal;
  currency : Currency;
}

entity Authors : cuid, managed {
  firstname : String not null;
  lastname : String not null;
  books : Association to many Books on books.author = $self;
}

entity Genres : cuid, sap.common.CodeList {
  key code : String not null;
}
