enum List<T> {
	case Empty
	indirect case NonEmpty(head: T, tail: List<T>)
}