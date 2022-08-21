// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "bootstrap";
import "./controllers";

interface IFoo {
  foo: string;
}

const foo: IFoo = {
  foo: "bar",
};

export { foo };
