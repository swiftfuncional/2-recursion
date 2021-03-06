indirect enum List<T> {
	case Empty
	case NonEmpty(head: T, tail: List<T>)
}

let cart = List.NonEmpty(
	head: 4, tail: List.NonEmpty(
		head: 5, tail: List.NonEmpty(
			head: 7, tail: List.NonEmpty(
				head: 83, tail: List.NonEmpty(
					head: 3, tail: List.NonEmpty(
						head: 4, tail: List.Empty))))))

func totalCost(items: List<Int>, accumulator: Int = 0) -> Int {
    switch items {
    case .Empty:
		return accumulator
	case let .NonEmpty(head, tail):
		return totalCost(items: tail, accumulator: head + accumulator)
	}
}


totalCost(items: cart)
