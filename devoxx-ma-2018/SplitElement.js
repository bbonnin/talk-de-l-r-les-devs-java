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
    return (
      <Root css={{ backgroundColor: this.props.backgroundColor }}>
        <Title css={{ color: this.props.color }}>{ this.props.title }</Title>
        <Image src={this.props.src}/>
      </Root>
    )
  }
}

