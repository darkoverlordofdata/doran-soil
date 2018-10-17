/* stb Vala Bindings
 * Copyright (c) 2018 Bruce Davidspn <darkoverlordofdata@gmail.com>
 * 
 * ***********************************************************************
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ***********************************************************************
 * 
 */
[CCode (lower_case_cprefix ="SOIL_", cheader_filename="SOIL.h")]
namespace soil
{
    /**
     * Really just a data ptr, I re-define it as a compact class
     * so that lifetime management will auto free the memory.
     */
    [Compact, CCode(cname = "unsigned char", free_function = "SOIL_free_image_data")]
    public class Image { } 
    [CCode (cname = "SOIL_load_image")]
    public Image LoadImage (string filename, out int width, out int height, out int channels, int force_channels);
    [CCode (cname = "SOIL_free_image_data")]
    public void FreeImageData (Image img);

    //  public void set_flip_vertically_on_load (int flag_true_if_should_flip);

}
