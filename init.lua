function _init()
    init_sprite_animators()
    traveller_animator = make_sprite_animator(
        EXAMPLE_ANIMATOR_FIRST_FRAME,
        EXAMPLE_ANIMATOR_LAST_FRAME,
        4,
        MIN_COORDINATE,
        MAX_COORDINATE / 2
    )
end