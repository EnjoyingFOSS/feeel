// Copyright (C) 2019 Miroslav Mazel
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version. As an additional permission under
// section 7, you are allowed to distribute the software through an app
// store, even if that store has restrictive terms and conditions that
// are incompatible with the AGPL, provided that the source is also
// available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY, without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

enum LayoutXL {
  cols1(73.0),
  cols2(170.0),
  cols3(267.0),
  cols4(364.0),
  cols5(461.0),
  cols6(558.0),
  cols7(655.0),
  cols8(752.0),
  cols9(849.0),
  cols10(946.0),
  cols11(1043.0),
  cols12(1140.0);

  final double width;

  const LayoutXL(this.width);
}

class FeeelGrid {
  static const breakpointXL = 960;
}
