class BaseCell {
    constructor() {
        this.valueChangeCallbacks = [];
    }

    setValue(value) {
        if (this.value !== value) {
            this.value = value;
            this.valueChangeCallbacks.forEach((callback) => callback(value));
        }
    }

    get onChange() {
        return this.valueChangeCallbacks;
    }

    set onChange(callback) {
        this.valueChangeCallbacks.push(callback);
    }
}

export class InputCell extends BaseCell {
    constructor(input) {
        super();
        this.value = input;
    }
}

export class ComputeCell extends BaseCell {
    constructor(cells, fn) {
        super();
        this.cells = cells;
        this.fn = fn;
        this.callbacks = [];
        this.updateCount = 0;
        this.value = fn(cells);
        this.cells.forEach((cell) => cell.onChange = () => this.setValue(this.fn(this.cells)));
    }

    setValue(value) {
        this.updateCount++;
        if (this.updateCount === this.cells.length) {
            if (this.value !== value) {
                this.callbacks.forEach((callback) => callback.values.push(value));
            }
            super.setValue(value);
            this.updateCount = 0;
        }
    }

    addCallback(callback) {
        this.callbacks.push(callback);
    }

    removeCallback(callback) {
        this.callbacks = this.callbacks.filter((value) => value !== callback)
    }

}

export class CallbackCell {
    constructor(fn) {
        this.fn = fn;
        this.values = [];
    }
}