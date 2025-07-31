function _update()
    update_traveller()
end

function update_traveller()
    next_x = (traveller_animator.x + 1) % MAX_COORDINATE
    traveller_animator.x = next_x
end