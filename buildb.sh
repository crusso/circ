set -x
cp src/A/A.did .dfx/local/canisters/idl/$(dfx canister id A).did
cp src/B/B.did .dfx/local/canisters/idl/$(dfx canister id B).did
$(dfx cache show)/moc --package base $(dfx cache show)/base src/B/main.mo --actor-idl .dfx/local/canisters/idl --actor-alias A $(dfx canister id A) --actor-alias B $(dfx canister id B) -o B.wasm
