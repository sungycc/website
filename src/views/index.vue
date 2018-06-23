<template>
  <div id='particles-js'>
    <div class="links">
      <h1 class="title" text="Sungy's site">Sungy's site</h1>
      <h2>Coding || Fall asleep</h2>
      <p>
        <a href="https://github.com/sungycc" target="_blank">github</a>
      </p>
      <p>
        <a href="https://weibo.com/sungycc" target="_blank">微博</a>
      </p>
      <p>
        <a href="https://www.zhihu.com/people/sungycc/activities" target="_blank">知乎</a>
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'particlesJs',
  data () {
    return {}
  },
  mounted () {
    this.setParticles()
  },
  methods: {
    setParticles () {
      let particlesJson = {
        particles: {
          number: {
            value: 66,
            density: {
              enable: true,
              value_area: 999
            }
          },
          color: {
            value: '#87CEFA'
          },
          shape: {
            type: 'polygon',
            stroke: {
              width: 0,
              color: '#000000'
            },
            polygon: {
              nb_sides: 5
            },
            image: {
              src: 'img/github.svg',
              width: 100,
              height: 100
            }
          },
          opacity: {
            value: 0.5,
            random: false,
            anim: {
              enable: false,
              speed: 1,
              opacity_min: 0.1,
              sync: false
            }
          },
          size: {
            value: 3,
            random: true,
            anim: {
              enable: false,
              speed: 40,
              size_min: 0.1,
              sync: false
            }
          },
          line_linked: {
            enable: true,
            distance: 150,
            color: '#87CEFA',
            opacity: 0.4,
            width: 1
          },
          move: {
            enable: true,
            speed: 2,
            direction: 'none',
            random: false,
            straight: false,
            out_mode: 'out',
            bounce: false,
            attract: {
              enable: false,
              rotateX: 600,
              rotateY: 1200
            }
          }
        },
        interactivity: {
          detect_on: 'canvas',
          events: {
            onhover: {
              enable: true,
              mode: 'repulse'
              // 'mode': 'grab'
            },
            onclick: {
              enable: true,
              mode: 'push'
            },
            resize: true
          },
          modes: {
            grab: {
              distance: 400,
              line_linked: {
                opacity: 1
              }
            },
            bubble: {
              distance: 400,
              size: 40,
              duration: 2,
              opacity: 8,
              speed: 3
            },
            repulse: {
              distance: 200,
              duration: 0.4
            },
            push: {
              particles_nb: 4
            },
            remove: {
              particles_nb: 2
            }
          }
        },
        retina_detect: false
      }
      // let particlesJson = {
      //   'particles': {
      //     'number': {
      //       'value': 160,
      //       'density': {
      //         'enable': true,
      //         'value_area': 800
      //       }
      //     },
      //     'color': {
      //       'value': '#ffffff'
      //     },
      //     'shape': {
      //       'type': 'circle',
      //       'stroke': {
      //         'width': 0,
      //         'color': '#000000'
      //       },
      //       'polygon': {
      //         'nb_sides': 5
      //       },
      //       'image': {
      //         'src': 'img/github.svg',
      //         'width': 100,
      //         'height': 100
      //       }
      //     },
      //     'opacity': {
      //       'value': 1,
      //       'random': true,
      //       'anim': {
      //         'enable': true,
      //         'speed': 1,
      //         'opacity_min': 0,
      //         'sync': false
      //       }
      //     },
      //     'size': {
      //       'value': 3,
      //       'random': true,
      //       'anim': {
      //         'enable': false,
      //         'speed': 4,
      //         'size_min': 0.3,
      //         'sync': false
      //       }
      //     },
      //     'line_linked': {
      //       'enable': false,
      //       'distance': 150,
      //       'color': '#ffffff',
      //       'opacity': 0.4,
      //       'width': 1
      //     },
      //     'move': {
      //       'enable': true,
      //       'speed': 1,
      //       'direction': 'none',
      //       'random': true,
      //       'straight': false,
      //       'out_mode': 'out',
      //       'bounce': false,
      //       'attract': {
      //         'enable': false,
      //         'rotateX': 600,
      //         'rotateY': 600
      //       }
      //     }
      //   },
      //   'interactivity': {
      //     'detect_on': 'canvas',
      //     'events': {
      //       'onhover': {
      //         'enable': true,
      //         'mode': 'bubble'
      //       },
      //       'onclick': {
      //         'enable': true,
      //         'mode': 'repulse'
      //       },
      //       'resize': true
      //     },
      //     'modes': {
      //       'grab': {
      //         'distance': 400,
      //         'line_linked': {
      //           'opacity': 1
      //         }
      //       },
      //       'bubble': {
      //         'distance': 250,
      //         'size': 0,
      //         'duration': 2,
      //         'opacity': 0,
      //         'speed': 3
      //       },
      //       'repulse': {
      //         'distance': 400,
      //         'duration': 0.4
      //       },
      //       'push': {
      //         'particles_nb': 4
      //       },
      //       'remove': {
      //         'particles_nb': 2
      //       }
      //     }
      //   },
      //   'retina_detect': true
      // }
      // debugger
      // eslint-disable-next-line
      particlesJS('particles-js', particlesJson)
    }
  }
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
#particles-js {
  position: relative;
  height: 100%;
}
.links {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  .title {
    position: relative;
    margin: 12px 0;
    color: #70f484;
    font-weight: 700;
    font-size: 36px;
    letter-spacing: 6px;
    // text-transform: uppercase;
    white-space: nowrap;
  }
  .title:before {
    content: attr(text);
    position: absolute;
    z-index: 10;
    color: #d3de67;
    -webkit-mask: linear-gradient(to left, #d3de67, transparent);
  }
  h2 {
    margin-bottom: 30px;
    color: #999;
    font-weight: normal;
    font-size: 16px;
    letter-spacing: 0.12em;
    // left: 3px;
    text-align: center;
  }
  p {
    margin: 0;
    text-align: center;
    line-height: 2em;
    letter-spacing: 2px;
    a {
      text-decoration: none;
      color: #999;
    }
  }
}
</style>
