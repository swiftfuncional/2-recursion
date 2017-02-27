enum List<T> {
	case Empty
	case NonEmpty(head: T, tail: List<T>)
}