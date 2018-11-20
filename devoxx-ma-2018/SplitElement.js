import React from 'react'
import styled from 'styled-components'
import { backgroundColor, color } from 'styled-system'


const Root = styled.div([], {
  display: 'flex',
  flexDirection: 'column',
  justifyContent: 'center',
  minHeight: '100vh'
}, props => props.css,
  backgroundColor
)


const Image = styled.img([], {
  maxWidth: '100%',
  objectFit: 'contain'
})

const Title = styled.h2([], {
  color: 'white'
}, props => props.css,
  color
)

export default class SplitElement extends React.Component {
  render() {
    let title = ''
    let img = ''
    let others = ''

    if (this.props.title) {
      title = <Title css={{ color: this.props.color }}>{ this.props.title }</Title>
    }

    if (this.props.img) {
      img = <Image src={ this.props.img }/>
    }

    if (this.props.children) {
      others = this.props.children
    }

    return (
      <Root css={{ backgroundColor: this.props.backgroundColor, color: this.props.color }}>
        { title }
        { img }
        { others }
      </Root>
    )
  }
}

