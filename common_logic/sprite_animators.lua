function init_sprite_animators()
    sprite_animators = {}
end

function make_sprite_animator(start_frame, end_frame, ticks_per_frame, init_x, init_y)
    animator = {}
    animator.start_frame = start_frame
    animator.end_frame = end_frame
    animator.next_frame = start_frame
    animator.ticks_per_frame = ticks_per_frame
    animator.frame_ticks = 0
    animator.x = init_x
    animator.y = init_y
    add(sprite_animators, animator)
    return animator
end

function draw_sprite_animator(sprite_animator)
    spr(animator.next_frame, sprite_animator.x, sprite_animator.y)
    animator.frame_ticks += 1
    if animator.frame_ticks >= animator.ticks_per_frame then
        animator.frame_ticks = 0
        animator.next_frame += 1
        if animator.next_frame > animator.end_frame then
            animator.next_frame = animator.start_frame
        end
    end
end