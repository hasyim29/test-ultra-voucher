let arrays = ["cook", "save", "taste", "aves", "vase", "state", "map"];

function groupArrays(test) {
  let bash = [];

  for (let word of test) {
    let clean = word.split("").sort().join("");
    if (bash[clean]) {
      bash[clean].push(word);
    } else {
      bash[clean] = [word];
    }
  }
  return Object.values(bash);
}

console.log(groupArrays(arrays));
