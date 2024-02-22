const getRandomIntInclusive = (min, max) => {
  const minCeiled = Math.ceil(min);
  const maxFloored = Math.floor(max);

  return Math.floor(Math.random() * (maxFloored - minCeiled + 1) + minCeiled);
}

const generateRandContactNum = (iteration) => {
  for (let count = 1; count <= iteration; count++) {
    const num = [0, 9];

    for (let i = 2; i <= 10; i++) {
      const randNum = getRandomIntInclusive(0, 9);
      num.push(randNum);
    }

    console.log(num.join(""));
  }
}

const generateRandISBN = (length) => {


  for (let count = 1; count <= length; count++) {
    const nums = [];
    for (let i = 0; i <= 5; i++) {
      nums.push(getRandomIntInclusive(0, 9));
    }

    console.log(nums.join(""))

  }



};


// generateRandContactNum(5);
generateRandISBN(3);