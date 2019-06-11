# Copyright 2019 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApis.Generator.ElixirGenerator.ResourceContextTest do
  use ExUnit.Case
  doctest GoogleApis.Generator.ElixirGenerator.ResourceContext

  alias GoogleApis.Generator.ElixirGenerator.ResourceContext

  test "creating an empty context" do
    context = ResourceContext.empty()
    assert %ResourceContext{} = context
    assert "Foo" == ResourceContext.name(context, "foo")
  end

  test "creating the default context" do
    context = ResourceContext.default()
    assert %ResourceContext{} = context
    assert "DefaultPropertyFoo" == ResourceContext.name(context, "foo")
    assert "Default.Namespace.Model.Foo.t" == ResourceContext.typespec(context, "Foo")
  end

  test "resource name generation" do
    context =
      ResourceContext.empty()
      |> ResourceContext.with_namespace("My.Namespace")
      |> ResourceContext.with_property("OuterClass")

    assert %ResourceContext{} = context
    assert "OuterClassFoo" == ResourceContext.name(context, "foo")
    assert "My.Namespace.Model.OuterClass.t" == ResourceContext.typespec(context)
    assert "My.Namespace.Model.Foo.t" == ResourceContext.typespec(context, "Foo")

    nested_context = ResourceContext.with_property(context, "Foo")
    assert "My.Namespace.Model.OuterClassFoo.t" == ResourceContext.typespec(nested_context)
  end

  test "path generation" do
    context = ResourceContext.empty()

    assert "foo/bar" == ResourceContext.path(context, "foo/bar")
    assert "foo/bar" == ResourceContext.path(context, "/foo/bar")
  end

  test "path generation with base path" do
    context =
      ResourceContext.empty()
      |> ResourceContext.with_namespace("My.Namespace")
      |> ResourceContext.with_base_path("/v1/storage")

    assert "v1/storage/foo/bar" == ResourceContext.path(context, "foo/bar")
    assert "v1/storage/foo/bar" == ResourceContext.path(context, "/foo/bar")
  end

end