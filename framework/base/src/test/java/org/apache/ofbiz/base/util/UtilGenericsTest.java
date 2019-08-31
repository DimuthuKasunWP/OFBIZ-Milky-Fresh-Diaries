/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package org.apache.ofbiz.base.util;

import static org.junit.Assert.assertNull;

import java.util.Arrays;
import java.util.Collection;

import org.junit.Test;

public class UtilGenericsTest {

    @Test
    public void basicCheckCollection() {
        UtilGenerics.<String, Collection<String>>checkCollection(Arrays.asList("foo", "bar", "baz"), String.class);
    }

    @Test(expected = ClassCastException.class)
    public void incompatibleCollectionCheckCollection() {
        UtilGenerics.<String, Collection<String>>checkCollection("not a collection", String.class);
    }

    @Test(expected = IllegalArgumentException.class)
    public void heterogenousCheckCollection() {
        UtilGenerics.<String, Collection<String>>checkCollection(Arrays.asList("foo", 0), String.class);
    }

    @Test
    public void nullCheckCollection() {
        assertNull(UtilGenerics.<String, Collection<String>>checkCollection(null, String.class));
    }
}
