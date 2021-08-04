using CatalogService as service from '../../srv/cat-service';

annotate service.Books with @UI : {
    HeaderInfo       : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : '{i18n>book}',
        TypeNamePlural : '{i18n>books}',
        Title          : {
            $Type : 'UI.DataField',
            Value : ID,
        },
    },
    LineItem         : [
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : stock,
        },
    ],
    FieldGroup #data : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : stock,
            },
        ],
    },
    Facets           : [{
        $Type  : 'UI.ReferenceFacet',
        Target : '@UI.FieldGroup#data',
    }, ],
};
