use dep::std;
use dep::array_helpers;

fn main(input: [u8; 32]) -> pub Field {
    let mut sliced = [0; 20];

    for i in 0..20 {
        sliced[i] = input[i];
    }

    let key = array_helpers::u8_to_eth_address(sliced);

    let hash = std::hash::poseidon::bn254::hash_1([key]);

    hash
}

#[test]
fn test_main() {
    let input: [u8; 32] = [
        170, 60, 143, 56, 248, 157, 141, 21, 50, 59, 118, 206, 25, 184, 193, 178, 24, 94, 134, 182, 23, 75, 190, 175, 196, 0, 115, 207, 219, 41, 80, 7
    ];

    std::println(main(input));
}

