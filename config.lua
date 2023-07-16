Config = {}


-- SI RACCOMANDA DI NON MODIFICARE L'ID DOPO AVERLO FATTO SCEGLIERE AI GIOCATORI

Config.Stili = {
    {
        nome= "IMPRENDITORE",
        id = "imprenditore",
        image = 'imprenditore.png',
        descrizione=  "Sfrutta ogni opportunità di mercato per creare e gestire aziende di successo, persegui i tuoi obiettivi.",
        oggetti = {
            {
                label = "Telefono",
                quantity = 1,
                name = 'telefono'
            },
            {
                label = "Panini",
                quantity = 3,
                name = 'pane'
            },
            {
                label = "Acqua",
                quantity = 2,
                name = 'acqua'
            },
            {
                label = "Contanti",
                quantity= 5000,
                name = 'money'
            }
        }
    },
    {
        nome= "CRIMINALE",
        id = "criminale",
        image = 'criminale.png',
        cutscene = false,
        descrizione=  "Fatti coinvolgere in attività illegali, fai rapine, traffica droga e guadagna più soldi possibili.",
        oggetti = {
            {
                label = "Grimaldello",
                quantity = 1,
                name = 'grimaldello'
            },
            {
                label = "Panini",
                quantity = 3,
                name = 'pane'
            },
            {
                label = "Acqua",
                quantity = 2,
                name = 'acqua'
            },
            {
                label = "Contanti",
                quantity= 1000,
                name = 'money'
            }
        }
    },
    {
        nome= "FORZA DELL'ORDINE",
        id = "fdo",
        image = 'fdo.png',
        cutscene = false,
        descrizione=  "Applica la legge e mantieni l’ordine nell’interà città",
        oggetti = {
            {
                label = "Telefono",
                quantity = 1,
                name = 'telefono'
            },
            {
                label = "Panini",
                quantity = 3,
                name = 'pane'
            },
            {
                label = "Acqua",
                quantity = 2,
                name = 'acqua'
            },
            {
                label = "Contanti",
                quantity= 4000,
                name = 'money'
            }
        }
    },
    {
        nome = "CIVILE",
        id = "civile",
        image = 'civile.png',
        cutscene = false,
        descrizione =  "Non farti coinvolgere nei giri dei criminali e dei poliziotti, stai nel tuo e guadagnati soldi facendo lavori onesti come il macellaio.",
        oggetti = {
            {
                label = "Telefono",
                quantity = 1,
                name = 'telefono'
            },
            {
                label = "Panini",
                quantity = 3,
                name = 'pane'
            },
            {
                label = "Acqua",
                quantity = 2,
                name = 'acqua'
            },
            {
                label = "Contanti",
                quantity= 2000,
                name = 'money'
            }
        }
    },
}