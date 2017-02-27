indirect enum List<T> {
	case Empty
	case NonEmpty(head: T, tail: List<T>)
}

let cart = [4, 5, 7, 83, 3, 4]

func totalCost(items: List<Int>) -> Int {
	switch items {
	case .Empty:

	case let .NonEmpty(head, tail):

	}
}
