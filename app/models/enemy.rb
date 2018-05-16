class Enemy < ApplicationRecord
    enum location: [one: "Act 1: The Exordium", two: "Act 2: The City", three: "Act 3: The Beyond"]
end
