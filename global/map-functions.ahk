getMapLength(_map) {
    _length := 0
    for _key, _value in _map {
        _length := _length + 1
    }
    return _length
}

getMapOfMapsLength(_map) {
    _length := 0
    for _key, _value in _map {
        _length := _length + getMapLength(_value)
    }
    return _length
}

minKeyMoreThan(_map, moreThanThis) {
    _min := 1000
    for _key, _value in _map {
        if (_key > moreThanThis and _key < _min ) {
            _min := _key
        }
    }
    return _min
}