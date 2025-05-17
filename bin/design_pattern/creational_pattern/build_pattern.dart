class House {
  String? foundation;
  String? walls;
  String? roof;

  @override
  String toString() => 'House with $foundation, $walls, and $roof';
}

class HouseBuilder {
  House _house = House();

  HouseBuilder buildFoundation(String foundation) {
    _house.foundation = foundation;
    return this;
  }

  HouseBuilder buildWalls(String walls) {
    _house.walls = walls;
    return this;
  }

  HouseBuilder buildRoof(String roof) {
    _house.roof = roof;
    return this;
  }

  House build() => _house;
}

void main() {
  var house =
      HouseBuilder()
          .buildFoundation('concrete')
          .buildWalls('brick')
          .buildRoof('tiles')
          .build();

  print(house);
}
