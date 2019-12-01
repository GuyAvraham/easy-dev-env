import Rox from 'rox-browser';

const flags = {
    enableTutorial: new Rox.Flag(false),
    titleColors: new Rox.Variant('White', ['White', 'Blue', 'Green', 'Yellow']),
};

// Register the flags with Rollout
Rox.register('', flags);

//todo secrets manager
Rox.setup("5ddffc23676b362cfb74f6d8");
