import React from 'react'
import PropTypes from 'prop-types'
import { withDeck, updaters, constants } from 'mdx-deck'


const setSteps = updaters.setSteps
const modes = constants.modes

// TODO: merge with Appear component (as it is mostly the same thing)

export default withDeck(class AppearDisappear extends React.Component {
  static propTypes = {
    children: PropTypes.node.isRequired,
    deck: PropTypes.object.isRequired
  }

  constructor (props) {
    super(props)
    const { update, index } = props.deck
    const steps = React.Children.toArray(props.children).length - 1 // we consider the first as already shown
    update(setSteps(index, steps))
  }

  render() {
    const children = React.Children.toArray(this.props.children)
      .map(child => typeof child === 'string'
        ? <div>{child}</div>
        : child
      )
    const { step, mode } = this.props.deck

    if (mode === modes.grid) {
      return children
    }

    return (
      <React.Fragment>
        {children.map((child, i) => (
          React.cloneElement(child, {
            key: i,
            style: {
              ...((child.props || {}).style || {}),
              display: (step == i) ? 'block' : 'none',
              objectFit: 'contain'
            }
          })
        ))}
      </React.Fragment>
    )
  }
})