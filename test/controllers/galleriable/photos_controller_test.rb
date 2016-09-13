# require 'test_helper'

# module Galleriable
#   class PhotosControllerTest < ActionDispatch::IntegrationTest
#     include Engine.routes.url_helpers

#     setup do
#       @photo = FactoryGirl.create(:photo)
#     end

#     test "should get index" do
#       get photos_url
#       assert_response :success
#     end

#     test "should get new" do
#       get new_photo_url
#       assert_response :success
#     end

#     test "should create photo" do
#       assert_difference('Photo.count') do
#         post photos_url, params: { photo: { caption: @photo.caption, image_name: @photo.image_name, image_uid: @photo.image_uid, name: @photo.name, photographable_id: @photo.photographable_id, photographable_type: @photo.photographable_type, photographer_id: @photo.photographer_id } }
#       end

#       assert_redirected_to photo_url(Photo.last)
#     end

#     test "should show photo" do
#       get photo_url(@photo)
#       assert_response :success
#     end

#     test "should get edit" do
#       get edit_photo_url(@photo)
#       assert_response :success
#     end

#     test "should update photo" do
#       patch photo_url(@photo), params: { photo: { caption: @photo.caption, image_name: @photo.image_name, image_uid: @photo.image_uid, name: @photo.name, photographable_id: @photo.photographable_id, photographable_type: @photo.photographable_type, photographer_id: @photo.photographer_id } }
#       assert_redirected_to photo_url(@photo)
#     end

#     test "should destroy photo" do
#       assert_difference('Photo.count', -1) do
#         delete photo_url(@photo)
#       end

#       assert_redirected_to photos_url
#     end
#   end
# end
