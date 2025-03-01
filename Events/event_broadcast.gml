/// Broadcasts an event (by calling `User Event 0`) to many objects.
/// Warning: It is not possible to broadcast another event during a broadcast!
/// @param {enum.BROADCAST_EVENTS} _event_type The global event type identifier.
/// @param {any} _target The target object, instance or all (default).
/// @param {struct} _event_details Additional fields to be passed into `global.event`.
/// Note: The struct will be modified by this function.
function event_broadcast(_event_type, _target=all, _event_details = {}) {
    _event_details.type = _event_type;
    _event_details.instigator = self;
    
    global.event = _event_details;
    with (_target) {
        event_user(0);
    }
    
    delete _event_details;
    delete global.event;
}