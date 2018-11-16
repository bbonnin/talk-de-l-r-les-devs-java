import React from 'react'
import styled from 'styled-components'

const Root = styled.div([], {
  display: 'flex',
  alignItems: 'center',
  flexDirection: 'column'
})

const ButtonGroup = styled.div([], {
  display: 'flex',
  alignItems: 'center'
})

const Button = styled.button`
  background: ${props => props.primary ? "black" : "white"};
  color: ${props => props.primary ? "white" : "black"};

  font-size: 1em;
  margin: 1em;
  padding: 0.25em 1em;
  border: 2px solid black;
  border-radius: 3px;
`;

const Image = styled.img([], {
  width: '75%'
})


export default class DemoStarwars extends React.Component {
  state = {
    trilogy: "1,2,3"
  }

  all = () => {
    this.setState({trilogy: "1,2,3"})
  }

  first = () => {
    this.setState({trilogy: "1"})
  }

  render() {
    let img_src = `http://localhost:4567/starwars/${this.state.trilogy}`
    return (
      <Root>
        <ButtonGroup>
          <Button onClick={this.all}>All movies</Button>
          <Button onClick={this.first}>Only the first trilogy</Button>
        </ButtonGroup>
        <Image src={img_src}/>
      </Root>
    )
  }
}