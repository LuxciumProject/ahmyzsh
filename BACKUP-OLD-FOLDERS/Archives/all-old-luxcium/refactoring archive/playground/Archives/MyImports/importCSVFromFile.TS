/** @format */
// tslint:disable-next-line:no-var-requires
const fs = require('fs');

function log(val) {
  console.log(val);
}

const importCSVFromFile = async () => {
  const fileToParse = '/Users/neb_401/Developer/neb401corp/LuxciumProject/luxcium.io/imports/contacts_all-2.csv';

  // DIT LE A LA PLANTE :
  /*

1 prendre le fichier et le convertir en text
2 [processedLines] séparer chaque lignes pour extraire ensuite les données
3 [headers] la premiere ligne doit etre extraite ce sont les libelées de chaque items
4 prendre chaque lignes apres la premiere
5 la séparrer par cellules (avec la virgule)
a chaque ligne faire une paire libel valeur et ajouter chaques lignes dans un objet
ce sera tout pour ce soir


*/

  fs.readFile(fileToParse, 'utf8', (err, data) => {
    // console.log(data.split('\r')[0].length);
    const dataStr = String(data);
    const lines = dataStr.split('\r\n');

    const processedLines = lines.map((one, two, three) => {
      return one.split(',');
    });

    const headers = processedLines.shift();

    const myLineObject = processedLines.map((line, two) => {
      const lineObject = {};

      line.map((cell, indx, whole) => {
        lineObject[headers[indx]] = cell;
        return '';
      });
      return lineObject;
    });

    log(myLineObject);
    // // log(headers.length);
    // processedLines.map((one, two, three) => {
    // });
    // console.log();
  });
};

importCSVFromFile();

// function spitObjectFromArrays(arr1: [], arr2: []) {
//   return {};
// }
// /Users/neb_401/Developer/neb401corp/LuxciumProject/luxcium.io/imports/contacts_all-2.csv

// DIT LE A LA PLANTE :
/*

1 prendre le fichier et le convertir en text
2 séparer chaque lignes pour extraire ensuite les données
3 la premiere ligne doit etre extraite ce sont les libelées de chaque items
4 prendre chaque lignes apres la premiere
5 la séparrer par cellules (avec la virgule)
a chaque ligne faire une paire libel valeur et ajouter chaques lignes dans un objet
ce sera tout pour ce soir


*/
