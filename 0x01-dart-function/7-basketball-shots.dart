int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int totalA = 0;
  int totalB = 0;

  teamA.forEach((key, value) {
    switch (key) {
      case 'Free throws':
        totalA += value;
        break;
      case '2 pointer':
        totalA += value * 2;
        break;
      case '3 pointer':
        totalA += value * 3;
        break;
    }
  });

  teamB.forEach((key, value) {
    switch (key) {
      case 'Free throws':
        totalB += value;
        break;
      case '2 pointer':
        totalB += value * 2;
        break;
      case '3 pointer':
        totalB += value * 3;
        break;
    }
  });

  return totalA > totalB
      ? 1
      : totalA < totalB
          ? 2
          : 0;
}
