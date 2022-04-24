namespace my.bookshop;
using { cuid, managed, sap, Currency } from '@sap/cds/common';

entity Books : cuid, managed {
  title  : localized String not null @title: '{i18n>title}';
  description : localized String @title: '{i18n>description}';
  author : Association to Authors @title: '{i18n>author}';
  genre : Association to Genres @title: '{i18n>genre}';
  stock  : Integer @title: '{i18n>stock}';
  price : Decimal @title: '{i18n>price}';
  currency : Currency @title: '{i18n>currency}';
}

entity Authors : cuid, managed {
  firstname : String not null @title: '{i18n>firstname}';
  lastname : String not null @title: '{i18n>lastname}';
  books : Association to many Books on books.author = $self @title: '{i18n>books}';
}

entity Genres : sap.common.CodeList {
  key code : String not null @title: '{i18n>code}'; 
}
