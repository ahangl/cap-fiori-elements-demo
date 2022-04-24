using CatalogService as service from '../../srv/cat-service';

annotate service.Books with @(
    UI.HeaderInfo         : {
        Title          : {Value : title},
        Description    : {Value : description},
        TypeName       : '{i18n>book}',
        TypeNamePlural : '{i18n>books}',
    },

    UI.SelectionFields    : [
        title,
        author_ID,
        genre_code,
    ],

    UI.LineItem           : [
        {Value : title},
        {Value : genre.name},
        {Value : price},
        {Value : currency_code},
        {Value : stock},
    ],

    UI.FieldGroup #Book   : {
        Label : '{i18n>book}',
        Data  : [
            {Value : title},
            {Value : description},
            {Value : price},
            {Value : currency.symbol},
            {Value : stock},
        ]
    },

    UI.FieldGroup #Author : {
        Label : '{i18n>author}',
        Data  : [
            {Value : author.firstname},
            {Value : author.lastname},
        ]
    },

    UI.FieldGroup #Genre  : {
        Label : '{i18n>genre}',
        Data  : [{Value : genre.name}]
    },

    UI.Facets             : [{
        $Type  : 'UI.ReferenceFacet',
        Target : '@UI.FieldGroup#Book',
    }],

    UI.HeaderFacets       : [
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : '{i18n>author}',
            Target : '@UI.FieldGroup#Author',
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : '{i18n>genre}',
            Target : '@UI.FieldGroup#Genre',
        }
    ]
);
