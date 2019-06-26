# conceptnet

TODO: Write a description here

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     conceptnet:
       github: rmarronnier/conceptnet
   ```

2. Run `shards install`

## Usage

```crystal
require "conceptnet"

concept = ConceptNet::Client.new("fr")

puts concept.get_node("eau")
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/rmarronnier/conceptnet/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Rémy Marronnier](https://github.com/rmarronnier) - creator and maintainer
