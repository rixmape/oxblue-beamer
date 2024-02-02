# The `oxblue-beamer` LaTeX class

This class is a simple wrapper around the `beamer` class, which is used to create presentations in LaTeX. It is designed for my academic presentations, and is inspired by the Oxford Blue (#002147) color from the University of Oxford's branding guidelines.

## Usage

To use this class, simply include the `oxblue-beamer.cls` file in the same directory as your `.tex` file, and include the following line at the top of your `.tex` file:

```latex
\documentclass{oxblue-beamer}
```

## Options

The class accepts the following options:

- `sectionframe`: Title frame at the beginning of each section
- `endframe`: A thank you frame at the end of the presentation

## Feature Roadmap

- [X] Section and end frame
- [X] Footline with page number, author, and title
- [X] Code blocks using the `minted` package
- [X] Colored boxes for info, alert, and example
- [ ] Customizable color scheme
- [ ] Full- and half-width images
- [ ] and more...

## License

This class is released under the MIT License. See the [LICENSE](LICENSE) file for more information.
