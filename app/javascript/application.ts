// Entry point for the build script in your package.json
import '@hotwired/turbo-rails'

const appElement = document.getElementById('app')
if (appElement) {
  appElement.innerHTML = '<strong>Hello World with TypeScript!</strong>'
}

interface IFoo {
  foo: string
}

const foo: IFoo = {
  foo: 'bar',
}

export { foo }
