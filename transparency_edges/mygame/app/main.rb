# Engine tick
def tick args
  args.outputs.background_color = [100, 100, 100]

  img = {w: 1920, h: 528, path: "sprites/bg03_0001.png" }

  # Uncomment this to try png8 instead
  # img = {w: 1920, h: 528, path: "sprites/bg03_0001_png8indexed.png" }


  # Keep Aspect ratio of sprite
  w = 1280
  img.w = w + 1
  img.h = w / 1920.0 * 528.0

  y = 0
  # Nice water scrolling
  3.times do |i|
    args.outputs.primitives << {
                  x: Kernel.tick_count % w-(i-1)*w,
                  y: y,
    }.merge!(img)
  end


  args.outputs.primitives << {
                x: 1280/2,
                y: 720/2,
                w: 200,
                h: 200,
                angle: 0,
                path: "sprites/circle/red.png"
              }

  # Uncomment this to try png8
  # args.outputs.primitives << {
  #               x: 1280/2,
  #               y: 720/2,
  #               w: 200,
  #               h: 200,
  #               angle: 0,
  #               path: "sprites/circle/red_png8indexed.png"
  #             }


end
