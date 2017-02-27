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

func totalCost(items: List<Int>) -> Int {
	switch items {
	case .Empty:
		return 0
	case let .NonEmpty(head, tail):
		return head + totalCost(items: tail)
	}
}
