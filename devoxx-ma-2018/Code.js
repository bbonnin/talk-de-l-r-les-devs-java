import React from 'react'
import Highlight, { defaultProps } from 'prism-react-renderer'
import theme from 'prism-react-renderer/themes/nightOwl'


export default class Code extends React.Component {
  render() {
    let code = this.props.code
    let title = this.props.title

    return (
      <Highlight {...defaultProps} theme={theme} code={code} language="python">
        {({ className, style, tokens, getLineProps, getTokenProps }) => (
          <div style={{height: '100vh', width: '50vw', background: 'rgb(1, 22, 39)', color: 'rgb(214, 222, 235)',
            display: 'flex', alignItems: 'center', justifyContent: 'center'}}>
            
            <div style={{height: '100vh', display: 'flex', flexDirection: 'column', justifyContent: 'center'}}>
              
              <h1>{title}</h1>

              <div style={{flexGrow: '1', display: 'flex', alignItems: 'flex-start', overflow: 'hidden', transform: 'scale(0.9)'}}>

                <pre>

                  <div style={{position: 'relative'}}>
                
                    <code className={className, 'scroll-content'} style={Object.assign(
                        {},
                        { display: "inline-block", textAlign: "left", width: "100%" },
                        style
                      )}>
                      {tokens.map((line, i) => (
                        <div {...getLineProps({ line, key: i })}>
                          {line.map((token, key) => (
                            <span {...getTokenProps({ token, key })} />
                          ))}
                        </div>
                      ))}
                    </code>
                  </div>
                </pre>
              </div>
            </div>
          </div>
        )}
      </Highlight>
    )
  }
}
