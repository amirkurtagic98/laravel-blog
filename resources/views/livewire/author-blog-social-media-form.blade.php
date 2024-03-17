<div>
    <form method="POST" wire:submit.prevent="updateBlogSocialMedia()">
        <div class="row">
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="" class="form-label">Facebook</label>
                    <input type="text" class="form-control" placeholder="Facebook URL" wire:model="facebook_url">
                    @error('facebook_url')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="" class="form-label">Instagram</label>
                    <input type="text" class="form-control" placeholder="Instagram URL" wire:model="instagram_url">
                    @error('instagram_url')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="" class="form-label">YouTube</label>
                    <input type="text" class="form-control" placeholder="YouTube URL" wire:model="youtube_url">
                    @error('youtube_url')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="" class="form-label">LinkedIn</label>
                    <input type="text" class="form-control" placeholder="LinkedIn URL" wire:model="linkedin_url">
                    @error('linkedin_url')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
            </div>
        </div>
        <button class="btn btn-primary" type="submit">Update</button>
    </form>
</div>
