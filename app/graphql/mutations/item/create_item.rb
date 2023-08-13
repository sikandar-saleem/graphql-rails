class Mutations::Artist::CreateItem < Mutations::BaseMutation
    field :item, Types::ItemType

    argument :description, String
    argument :image_url,  String
    argument :artist_id, Int

    def resolve(description:, image_url:, artist_id:)
        @item = Item.new(description: description, image_url: image_url, artist_id: artist_id)
        if @item.save
            {
                item: @item,
                errors: []
            }
        else
            {
                item: nil,
                errors: @item.errors.full_messages
            }
        end
    end
end
