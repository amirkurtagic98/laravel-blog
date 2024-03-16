<div>
    <form method="post" wire:submit.prevent="UpdateDetails()">
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label class="form-label">Name</label>
                    <input type="text" class="form-control" name="example-text-input" placeholder="Name" wire:model="name">
                    @error('name')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                    <label class="form-label">Username</label>
                    <input type="text" class="form-control" name="example-text-input" placeholder="Username" wire:model="username">
                    @error('username')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="text" class="form-control" name="example-text-input" placeholder="Email" wire:model="email" disabled>
                    @error('email')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
            </div>
        </div>
        <div class="mb-3">
            <label class="form-label">Biography</label>
            <textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Content.." wire:model="biography">Biography...</textarea>
        </div>
        <button type="submit" class="btn btn-primary">Save changes</button>
    </form>
</div>
