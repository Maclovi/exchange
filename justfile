[doc("All command information")]
[private]
default:
  @just --list --unsorted --list-heading $'Exchange commands…\n'

[doc("Lint check")]
[group("Lint")]
@lint:
    echo "Run cargo fmt..." && cargo fmt --check
    echo "Run cargo clippy..." && cargo clippy -- -D warnings
    echo "Run cargo check all..." && cargo check --all
    echo "Run codespell..." && codespell
