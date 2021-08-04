import cds from '@sap/cds';
    
type Book = { ID: string; title: string; stock: number; };
type Books = Book[];

module.exports = cds.service.impl((srv) => {
    const { Books } = srv.entities;

    srv.after('READ', Books, (results: Books) => {
        if (results && Array.isArray(results)) {
            results.forEach(result => { if (result.stock > 111) result.title += ` -- 11% discount!` });
        }
    })
})