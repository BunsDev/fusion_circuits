use dep::std;

fn main(x: Field, y: Field) -> pub Field {
    let hash = std::hash::pedersen_hash([x, y]);

    hash
}

#[test]
fn test_main() {
    let x : Field = 0x12345;
    let y : Field = 0x000000000000000000000000000000000000000000000000016345785d8a0000;

    std::println(main(x, y));
}
