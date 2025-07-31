function _draw()
    cls()
    draw_sprite_animators()
end

function draw_sprite_animators()
    for animator in all(sprite_animators) do
        draw_sprite_animator(animator)
    end
end