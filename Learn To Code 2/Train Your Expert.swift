let expert = Expert()

var gemCounter = 0

func collectGemTurnAround() {
    while !expert.isBlocked {
        expert.moveForward()
    }
}

func theComeBack() {
    expert.moveForward()
    expert.moveForward()
    expert.turnRight()
}
for i in 1 ... 5 {
    collectGemTurnAround()
    expert.collectGem()
    gemCounter += 1
    if gemCounter == 3{
        expert.turnLockDown()
    }
    expert.turnRight()
    expert.turnRight()
    theComeBack()
}

expert.turnLeft()
expert.moveForward()
expert.moveForward()
expert.collectGem()
