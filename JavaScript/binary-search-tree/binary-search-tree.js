export class BinarySearchTree {
    constructor(data) {
        this.data = data;
        this.left;
        this.right;
    }

    each(callback) {
        if (this.left) {
            this.left.each(callback);
        }
        callback(this.data);
        if (this.right) {
            this.right.each(callback);
        }
    }

    insert(number) {
        number <= this.data ? this.insert_left(number) : this.insert_right(number);
    }

    insert_left(number) {
        if (this.left) {
            this.left.insert(number);
        } else {
            this.left = new BinarySearchTree(number);
        }
    }

    insert_right(number) {
        if (this.right) {
            this.right.insert(number);
        } else {
            this.right = new BinarySearchTree(number);
        }
    }
}