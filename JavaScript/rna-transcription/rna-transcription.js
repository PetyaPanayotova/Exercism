export function toRna(dna) {
    const conversion = {G: "C", C: "G", T: "A", A: "U"};

    if (dna.split("").some((value) => conversion[value] == undefined)) {
        throw new Error('Invalid input DNA.')
    }
    
    return dna.split("").map((nucleotide) => conversion[nucleotide]).join("");
}