module MyModule::TokenizedRewards {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct representing user rewards.
    struct Rewards has store, key {
        total_rewards: u64,   // Total tokens rewarded to the user
    }

    /// Function to initialize user rewards.
    public fun init_rewards(user: &signer) {
        let rewards = Rewards {
            total_rewards: 0,
        };
        move_to(user, rewards);
    }

}
