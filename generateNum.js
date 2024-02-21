function getRandomIntInclusive(min, max) {
  const minCeiled = Math.ceil(min);
  const maxFloored = Math.floor(max);
  return Math.floor(Math.random() * (maxFloored - minCeiled + 1) + minCeiled); // The maximum is inclusive and the minimum is inclusive
}

const generateRandContactNumber = () => {
  const nums = [0, 9];

  for (let i = 2; i < 11; i++) {
    nums.push(getRandomIntInclusive(0, 9));
  }

  return nums.join("");
};

const generateRandISBN = () => {
  const nums = [];

  for (let i = 0; i <= 5; i++) {
    nums.push(getRandomIntInclusive(0, 9));
  }

  return nums.join("");
};

for (let i = 0; i <= 6; i++) {
  console.log(generateRandISBN());
}
